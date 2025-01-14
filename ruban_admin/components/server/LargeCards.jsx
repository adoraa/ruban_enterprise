import React from 'react'
import LargeCard from './LargeCard'

export default function LargeCards() {
    const orderStats = [
        {
        title: "Today's Orders",
        amount: 150000,
        color: "bg-green-600"
    },{
        title: "Yesterday's Orders",
        amount: 250000,
        color: "bg-orange-600"
    },{
        title: "This Month",
        amount: 4500000,
        color: "bg-yellow-500"
    },{
        title: "All-Time",
        amount: 450000,
        color: "bg-red-600"
    }
]
  return (
    <div className='grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-4 py-8'>
        {/* Cards */}
        {
            orderStats.map((item,i)=>{
                return(
                    <LargeCard className="bg-green-600" data={item} key={i} />
                )
            })
        }
    </div>
  )
}
