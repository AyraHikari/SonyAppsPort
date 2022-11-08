.class Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;
.super Lcom/android/launcher3/dragndrop/DragDriver;
.source "DragDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/DragDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemDragDriver"
.end annotation


# instance fields
.field private final mDragStartTime:J

.field mLastX:F

.field mLastY:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragController;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "dragController"    # Lcom/android/launcher3/dragndrop/DragController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/dragndrop/DragController;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p2, "sec":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/MotionEvent;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragDriver;-><init>(Lcom/android/launcher3/dragndrop/DragDriver$EventListener;Ljava/util/function/Consumer;)V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastX:F

    .line 88
    iput v0, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastY:F

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mDragStartTime:J

    .line 93
    return-void
.end method

.method private simulateSecondaryMotionEvent(Landroid/view/DragEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 105
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    :pswitch_0
    return-void

    .line 113
    :pswitch_1
    const/4 v0, 0x1

    .line 114
    .local v0, "motionAction":I
    goto :goto_0

    .line 110
    .end local v0    # "motionAction":I
    :pswitch_2
    const/4 v0, 0x2

    .line 111
    .restart local v0    # "motionAction":I
    goto :goto_0

    .line 107
    .end local v0    # "motionAction":I
    :pswitch_3
    const/4 v0, 0x0

    .line 108
    .restart local v0    # "motionAction":I
    nop

    .line 118
    :goto_0
    iget-wide v1, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mDragStartTime:J

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v7

    const/4 v8, 0x0

    .line 118
    move v5, v0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 120
    .local v1, "emulatedEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mSecondaryEventConsumer:Ljava/util/function/Consumer;

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 122
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 126
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->simulateSecondaryMotionEvent(Landroid/view/DragEvent;)V

    .line 127
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 129
    .local v0, "action":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 159
    const/4 v1, 0x0

    return v1

    .line 151
    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-interface {v2}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragExitWindow()V

    .line 152
    return v1

    .line 136
    :pswitch_1
    return v1

    .line 155
    :pswitch_2
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-interface {v2}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragCancel()V

    .line 156
    return v1

    .line 145
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastX:F

    .line 146
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastY:F

    .line 147
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    .line 148
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    iget v3, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastX:F

    iget v4, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastY:F

    invoke-interface {v2, v3, v4}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragEnd(FF)V

    .line 149
    return v1

    .line 139
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastX:F

    .line 140
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastY:F

    .line 141
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    .line 142
    return v1

    .line 131
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastX:F

    .line 132
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastY:F

    .line 133
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 97
    const/4 v0, 0x0

    return v0
.end method
