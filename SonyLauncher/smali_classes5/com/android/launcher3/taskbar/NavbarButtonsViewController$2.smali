.class Lcom/android/launcher3/taskbar/NavbarButtonsViewController$2;
.super Ljava/lang/Object;
.source "NavbarButtonsViewController.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->moveNavButtonsToNewWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    .line 677
    iput-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$2;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 680
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$2;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->-$$Nest$fgetmSeparateWindowParent(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 681
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$2;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->-$$Nest$fgetmSeparateWindowInsetsComputer(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;

    move-result-object v1

    .line 680
    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper;->addOnComputeInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;)V

    .line 682
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 686
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$2;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->-$$Nest$fgetmSeparateWindowParent(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 687
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$2;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->-$$Nest$fgetmSeparateWindowInsetsComputer(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper;->removeOnComputeInsetsListener(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;)V

    .line 689
    return-void
.end method
