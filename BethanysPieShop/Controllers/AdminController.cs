﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BethanysPieShop.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace BethanysPieShop.Controllers
{
    [Authorize(Roles = "Admin")]
    public class AdminController : Controller
    {
        private readonly IPieRepository _pieRepository;
        private readonly AppDbContext _appDbContext;
        private readonly ICategoryRepository _categoryRepository;

        public AdminController(IPieRepository pieRepository, ICategoryRepository categoryRepository, AppDbContext appDbContext)
        {
            _pieRepository = pieRepository;
            _appDbContext = appDbContext;
            _categoryRepository = categoryRepository;
        }
        // GET: /<controller>/

        public ActionResult Index()
        {
            return View(_pieRepository.AllPies.ToList());
        }

        public IActionResult CreatePage()
        {
            ViewBag.Categories = _categoryRepository.AllCategories.Select(li => new SelectListItem
            { Text = li.CategoryName, Value = li.CategoryId.ToString() });
            return View();
        }
        [HttpPost]
        public IActionResult Create(Pie pie)
        {
            pie.CategoryId = 3;
            // _pieRepository.CreatePie(pie);
            _appDbContext.Pies.Add(pie);
            _appDbContext.SaveChanges();
            return RedirectToAction("Index", "Admin");
        }
        /*
        [HttpPost]
        public ActionResult CreatePies(Pie pies)
        {
            db.Pies.Add(pies);
            db.SaveChanges();
            return RedirectToAction("Index", "Admin");
        }*/
        [HttpPost]
        public bool Delete(int id)
        {
            try
            {
                Pie pie = _pieRepository.AllPies.Where(s => s.PieId == id).First();
                _appDbContext.Pies.Remove(pie);
                _appDbContext.SaveChanges();
                return true;
            }
            catch (System.Exception)
            {
                return false;
            }

        }
        
        public ActionResult Update(int id)
        {
            return View(_pieRepository.AllPies.Where(s => s.PieId == id).First());
        }
        
        [HttpPost]
        public ActionResult UpdatePie(Pie pies)
        {
            Pie p = _appDbContext.Pies.Where(s => s.PieId == pies.PieId).First();
            p.Name = pies.Name;
            p.Price = pies.Price;
            p.ShortDescription = pies.ShortDescription;
            p.LongDescription = pies.LongDescription;
            _appDbContext.Pies.Update(p);
            _appDbContext.SaveChanges();
            return RedirectToAction("Index", "Admin");
        }


    }
}
