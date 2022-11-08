.class Lcom/android/launcher3/taskbar/NavbarButtonsViewController$1;
.super Lcom/android/launcher3/views/BaseDragLayer;
.source "NavbarButtonsViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/BaseDragLayer<",
        "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/NavbarButtonsViewController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "alphaChannelCount"    # I

    .line 350
    iput-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$1;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/launcher3/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected canFindActiveController()Z
    .locals 1

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public recreateControllers()V
    .locals 1

    .line 353
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/util/TouchController;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$1;->mControllers:[Lcom/android/launcher3/util/TouchController;

    .line 354
    return-void
.end method
