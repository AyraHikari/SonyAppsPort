.class public final synthetic Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

.field public final synthetic f$1:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda17;->f$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda17;->f$1:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda17;->f$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda17;->f$1:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$12$com-android-launcher3-taskbar-NavbarButtonsViewController(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Landroid/view/View;)V

    return-void
.end method
