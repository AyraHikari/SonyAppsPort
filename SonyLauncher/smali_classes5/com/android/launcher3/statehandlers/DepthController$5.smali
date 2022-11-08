.class Lcom/android/launcher3/statehandlers/DepthController$5;
.super Ljava/lang/Object;
.source "DepthController.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/statehandlers/DepthController;->ensureDependencies()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/statehandlers/DepthController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/statehandlers/DepthController;

    .line 176
    iput-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v0}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$fgetmLauncher(Lcom/android/launcher3/statehandlers/DepthController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherRootView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 181
    .local v0, "windowToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v1}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$fgetmWallpaperManager(Lcom/android/launcher3/statehandlers/DepthController;)Landroid/app/WallpaperManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v2}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$fgetmDepth(Lcom/android/launcher3/statehandlers/DepthController;)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/app/WallpaperManager;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v1}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$monAttached(Lcom/android/launcher3/statehandlers/DepthController;)V

    .line 185
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 189
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v1}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$fgetmCrossWindowBlurListener(Lcom/android/launcher3/statehandlers/DepthController;)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/CrossWindowBlurListeners;->removeListener(Ljava/util/function/Consumer;)V

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v0}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$fgetmLauncher(Lcom/android/launcher3/statehandlers/DepthController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v1}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$fgetmOpaquenessListener(Lcom/android/launcher3/statehandlers/DepthController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ScrimView;->removeOpaquenessListener(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method
