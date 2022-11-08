.class Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;
.super Ljava/lang/Object;
.source "BitmapCreationCheck.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyViewDrawListener"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 95
    iput-object p1, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;->this$0:Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;->mHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;->this$0:Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;

    invoke-static {v0}, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;->-$$Nest$fgetmCurrentThreadDrawing(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)Ljava/lang/ThreadLocal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p0}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public run()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;->this$0:Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;

    invoke-static {v0}, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;->-$$Nest$fgetmCurrentThreadDrawing(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)Ljava/lang/ThreadLocal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 108
    return-void
.end method
