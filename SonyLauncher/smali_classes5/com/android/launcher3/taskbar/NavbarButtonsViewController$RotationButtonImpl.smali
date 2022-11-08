.class Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;
.super Ljava/lang/Object;
.source "NavbarButtonsViewController.java"

# interfaces
.implements Lcom/android/systemui/shared/rotation/RotationButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/NavbarButtonsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotationButtonImpl"
.end annotation


# instance fields
.field private final mButton:Landroid/widget/ImageView;

.field private mImageDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "button"    # Landroid/widget/ImageView;

    .line 784
    iput-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    iput-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->mButton:Landroid/widget/ImageView;

    .line 786
    return-void
.end method


# virtual methods
.method public acceptRotationProposal()Z
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->mButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->mImageDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object v0
.end method

.method public bridge synthetic getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 779
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->getImageDrawable()Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v0

    return-object v0
.end method

.method public hide()Z
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->mButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->-$$Nest$fgetmState(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->-$$Nest$fputmState(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;I)V

    .line 816
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->-$$Nest$mapplyState(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    .line 817
    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDarkIntensity(F)V
    .locals 0
    .param p1, "darkIntensity"    # F

    .line 848
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 832
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 1
    .param p1, "onHoverListener"    # Landroid/view/View$OnHoverListener;

    .line 837
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 838
    return-void
.end method

.method public setRotationButtonController(Lcom/android/systemui/shared/rotation/RotationButtonController;)V
    .locals 3
    .param p1, "rotationButtonController"    # Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 791
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 792
    invoke-virtual {p1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->mImageDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 793
    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 794
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->accessibility_rotate_button:I

    .line 795
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 794
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->mImageDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 797
    return-void
.end method

.method public show()Z
    .locals 2

    .line 806
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->mButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 807
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->-$$Nest$fgetmState(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->-$$Nest$fputmState(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;I)V

    .line 808
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->-$$Nest$mapplyState(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    .line 809
    const/4 v0, 0x1

    return v0
.end method

.method public updateIcon(II)V
    .locals 0
    .param p1, "lightIconColor"    # I
    .param p2, "darkIconColor"    # I

    .line 828
    return-void
.end method
