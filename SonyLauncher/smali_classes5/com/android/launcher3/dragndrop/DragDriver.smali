.class public abstract Lcom/android/launcher3/dragndrop/DragDriver;
.super Ljava/lang/Object;
.source "DragDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;,
        Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;,
        Lcom/android/launcher3/dragndrop/DragDriver$EventListener;
    }
.end annotation


# instance fields
.field protected final mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

.field protected final mSecondaryEventConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/DragDriver$EventListener;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "eventListener"    # Lcom/android/launcher3/dragndrop/DragDriver$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/dragndrop/DragDriver$EventListener;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p2, "sec":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/MotionEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    .line 42
    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragDriver;->mSecondaryEventConsumer:Ljava/util/function/Consumer;

    .line 43
    return-void
.end method

.method public static create(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/dragndrop/DragOptions;Ljava/util/function/Consumer;)Lcom/android/launcher3/dragndrop/DragDriver;
    .locals 1
    .param p0, "dragController"    # Lcom/android/launcher3/dragndrop/DragController;
    .param p1, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/dragndrop/DragController;",
            "Lcom/android/launcher3/dragndrop/DragOptions;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;)",
            "Lcom/android/launcher3/dragndrop/DragDriver;"
        }
    .end annotation

    .line 71
    .local p2, "sec":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/MotionEvent;>;"
    iget-object v0, p1, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    .line 72
    iget-boolean v0, p1, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;-><init>(Lcom/android/launcher3/dragndrop/DragController;Ljava/util/function/Consumer;)V

    return-object v0

    .line 77
    :cond_1
    new-instance v0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;-><init>(Lcom/android/launcher3/dragndrop/DragController;Ljava/util/function/Consumer;)V

    return-object v0
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 49
    const/4 v0, 0x0

    return v0
.end method
