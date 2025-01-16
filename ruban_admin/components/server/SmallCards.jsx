import React from 'react'
import SmallCard from './SmallCard'
import { CheckCheck, CircleEllipsis, ShoppingCart, Truck } from 'lucide-react'

export default function SmallCards() {
    const orderStatus = [
        {
        title: "Total Orders",
        amount: 1500,
        iconColor: "bg-blue-600",
        icon: ShoppingCart
    },{
        title: "Pending",
        amount: 25,
        iconColor: "bg-yellow-500",
        icon: CircleEllipsis
    },{
        title: "Processing",
        amount: 50,
        iconColor: "bg-orange-500",
        icon: Truck
    },{
        title: "Delivered",
        amount: 450,
        iconColor: "bg-green-600",
        icon: CheckCheck
    }
]
  return (
    <div className='grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-4 py-8'>
        {/* Cards */}
        {
            orderStatus.map((data, i)=>{
                return(
                    <SmallCard className="bg-green-600" data={data} key={i} />
                )
            })
        }
    </div>
  )
}
