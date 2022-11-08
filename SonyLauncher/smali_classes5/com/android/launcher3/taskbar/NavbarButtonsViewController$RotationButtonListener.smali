.class Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;
.super Ljava/lang/Object;
.source "NavbarButtonsViewController.java"

# interfaces
.implements Lcom/android/systemui/shared/rotation/RotationButton$RotationButtonUpdatesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/NavbarButtonsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotationButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 770
    if-eqz p1, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->-$$Nest$fgetmFloatingRotationButton(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->-$$Nest$fgetmFloatingRotationButtonBounds(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Landroid/graphics/Rect;

    move-result-object v1

    .line 772
    invoke-virtual {v0, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->-$$Nest$fgetmFloatingRotationButtonBounds(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 776
    :goto_0
    return-void
.end method
