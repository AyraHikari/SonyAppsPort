.class Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$ScreenshotSystemShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "TaskOverlayFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotSystemShortcut"
.end annotation


# instance fields
.field private final mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field final synthetic this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;


# direct methods
.method constructor <init>(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .locals 6
    .param p2, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p3, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p4, "originalView"    # Landroid/view/View;

    .line 363
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$ScreenshotSystemShortcut;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>.ScreenshotSystemShortcut;"
    iput-object p1, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$ScreenshotSystemShortcut;->this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    .line 364
    sget v1, Lcom/android/launcher3/R$drawable;->ic_screenshot:I

    sget v2, Lcom/android/launcher3/R$string;->action_screenshot:I

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    .line 366
    iput-object p2, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$ScreenshotSystemShortcut;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 367
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 371
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$ScreenshotSystemShortcut;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>.ScreenshotSystemShortcut;"
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$ScreenshotSystemShortcut;->this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    iget-object v1, v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->saveScreenshot(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 372
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$ScreenshotSystemShortcut;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$ScreenshotSystemShortcut;->dismissTaskMenuView(Landroid/content/Context;)V

    .line 373
    return-void
.end method
