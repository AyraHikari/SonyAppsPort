.class Lcom/android/launcher3/Workspace$3;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->setWallpaperDimension()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Workspace;

    .line 1344
    .local p0, "this":Lcom/android/launcher3/Workspace$3;, "Lcom/android/launcher3/Workspace$3;"
    iput-object p1, p0, Lcom/android/launcher3/Workspace$3;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1347
    .local p0, "this":Lcom/android/launcher3/Workspace$3;, "Lcom/android/launcher3/Workspace$3;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace$3;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    .line 1348
    .local v0, "size":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/launcher3/Workspace$3;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/launcher3/Workspace$3;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1349
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1350
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace$3;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 1352
    :cond_1
    return-void
.end method
