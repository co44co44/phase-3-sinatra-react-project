puts "🌱 Seeding spices..."

# Seed your database here
Student.create([
    {
        name: "Sofia"
    },
    {
        name: "Tomas"
    },
    {
        name: "Steve"
    },
    {
        name: "Cris"
    }
])

Course.create([
    {
        name: "Math",
        description: 1,
        days: "Saturdays",
        image_url: "https://clipartspub.com/images/free-clipart-numbers-transparent.png",
        student_id: 15
    },
    {
        name: "ELA",
        description: 1,
        days: "Sundays",
        image_url: "https://tse4.mm.bing.net/th?id=OIP.bw8GY4ABBK5HDj9FUS2luQHaFu&pid=Api&P=0",
        student_id: 15
    },
    {
        name: "Math",
        description: 2,
        days: "Saturdays",
        image_url: "https://tse3.mm.bing.net/th?id=OIP.UhJfEO3fJuFkYnWdOvYP-AHaFu&pid=Api&P=0",
        student_id: 16
    },
    {
        name: "ELA",
        description: 2,
        days: "Sundays",
        image_url: "https://m.media-amazon.com/images/I/51GjoUtdh2L._SX387_BO1,204,203,200_.jpg",
        student_id: 16
    }, 
    {
        name: "Math",
        description: 4,
        days: "Monday",
        image_url: "https://tse1.mm.bing.net/th?id=OIP.JsJi0DIH4NpfjYqf5UU82AHaJn&pid=Api&P=0",
        student_id: 17
    },   
    {
        name: "Reading",
        description: 4,
        days: "Tuesday",
        image_url: "https://tse4.mm.bing.net/th?id=OIP.SGSSTmDtYS7dYJ5v4HFwDAHaDf&pid=Api&P=0",
        student_id: 17
    },   
    {
        name: "Science",
        description: 1,
        days: "Wednesday",
        image_url: "https://tse1.mm.bing.net/th?id=OIP.RzxkqJZwTjh5EY46NflTRQHaHb&pid=Api&P=0",
        student_id: 18
    },   
    {
        name: "Math",
        description: 1,
        days: "Thursday",
        image_url: "https://tse3.mm.bing.net/th?id=OIP.r_G9daHSUbTKPMC6jNdadAHaEK&pid=Api&P=0",
        student_id: 18
    }  
])
puts "✅ Done seeding!"
