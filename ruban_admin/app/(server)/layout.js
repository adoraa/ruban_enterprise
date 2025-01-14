import Sidebar from '@/components/server/Sidebar'
import React from 'react'

export default function layout({children}) {
  return (
    <div className='flex'>
        {/* sidebar */}
        <Sidebar/>
        <div className='w-full'>
            {/* Header */}
            <h2>Nav Bar</h2>
            <main>
                {children}
            </main>
            {/* Main */}
        </div>
        {/* main body */}
    </div>
  )
}
