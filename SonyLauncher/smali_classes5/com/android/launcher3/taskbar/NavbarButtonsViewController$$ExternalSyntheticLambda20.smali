.class public final synthetic Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda20;->f$0:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    iput p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda20;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda20;->f$0:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    iget v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda20;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$addButton$15(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)V

    return-void
.end method
