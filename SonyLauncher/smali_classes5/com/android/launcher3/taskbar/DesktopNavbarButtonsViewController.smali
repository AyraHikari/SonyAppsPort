.class public Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;
.super Lcom/android/launcher3/taskbar/NavbarButtonsViewController;
.source "DesktopNavbarButtonsViewController.java"


# instance fields
.field private final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mNavButtonContainer:Landroid/view/ViewGroup;

.field private final mNavButtonsView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "context"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .param p2, "navButtonsView"    # Landroid/widget/FrameLayout;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/widget/FrameLayout;)V

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 41
    iput-object p2, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    .line 42
    sget v0, Lcom/android/launcher3/R$id;->end_nav_buttons:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    .line 43
    return-void
.end method


# virtual methods
.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 14
    .param p1, "controllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 50
    iput-object p1, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 54
    sget v3, Lcom/android/launcher3/R$drawable;->ic_sysbar_quick_settings:I

    iget-object v5, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    sget v7, Lcom/android/launcher3/R$id;->quick_settings_button:I

    const/16 v4, 0x20

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    .line 57
    sget v9, Lcom/android/launcher3/R$drawable;->ic_sysbar_notifications:I

    iget-object v11, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v12, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    sget v13, Lcom/android/launcher3/R$id;->notifications_button:I

    const/16 v10, 0x40

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 64
    return-void
.end method
