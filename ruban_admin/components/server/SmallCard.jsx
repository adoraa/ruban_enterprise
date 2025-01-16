import { ShoppingCart } from 'lucide-react'
import React from 'react'

export default function SmallCard({data}) {
    const {title, amount, iconColor, icon: Icon} = data;
  return (
    <div className='rounded-lg shadow-lg bg-slate-700 p-4'>
        <div className='flex space-x-4'>
            <div className={`w-8 h-8 ${iconColor} rounded-full items-center flex justify-center`}>
                <Icon className=''/>
            </div>
            <div className="">
                <p>{title}</p>
                <h3 className='text-2xl font-bold'>450</h3>
            </div>
        </div>
    </div>
  )
}
