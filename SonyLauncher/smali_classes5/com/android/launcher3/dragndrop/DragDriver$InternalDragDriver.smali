.class Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;
.super Lcom/android/launcher3/dragndrop/DragDriver;
.source "DragDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/DragDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalDragDriver"
.end annotation


# instance fields
.field private final mDragController:Lcom/android/launcher3/dragndrop/DragController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragController;Ljava/util/function/Consumer;)V
    .locals 0
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

    .line 171
    .local p2, "sec":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/MotionEvent;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragDriver;-><init>(Lcom/android/launcher3/dragndrop/DragDriver$EventListener;Ljava/util/function/Consumer;)V

    .line 172
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 173
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mSecondaryEventConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 204
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragCancel()V

    goto :goto_0

    .line 206
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/dragndrop/DragController;->getX(Landroid/view/MotionEvent;)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 207
    invoke-virtual {v3, p1}, Lcom/android/launcher3/dragndrop/DragController;->getY(Landroid/view/MotionEvent;)F

    move-result v3

    .line 206
    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragEnd(FF)V

    .line 208
    nop

    .line 213
    :goto_0
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mSecondaryEventConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 180
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragCancel()V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/dragndrop/DragController;->getX(Landroid/view/MotionEvent;)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 183
    invoke-virtual {v3, p1}, Lcom/android/launcher3/dragndrop/DragController;->getY(Landroid/view/MotionEvent;)F

    move-result v3

    .line 182
    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    .line 184
    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/dragndrop/DragController;->getX(Landroid/view/MotionEvent;)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 187
    invoke-virtual {v3, p1}, Lcom/android/launcher3/dragndrop/DragController;->getY(Landroid/view/MotionEvent;)F

    move-result v3

    .line 186
    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    .line 188
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/dragndrop/DragController;->getX(Landroid/view/MotionEvent;)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 189
    invoke-virtual {v3, p1}, Lcom/android/launcher3/dragndrop/DragController;->getY(Landroid/view/MotionEvent;)F

    move-result v3

    .line 188
    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragEnd(FF)V

    .line 190
    nop

    .line 196
    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
