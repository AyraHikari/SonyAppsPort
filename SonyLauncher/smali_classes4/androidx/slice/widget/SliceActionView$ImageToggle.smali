.class Landroidx/slice/widget/SliceActionView$ImageToggle;
.super Landroid/widget/ImageView;
.source "SliceActionView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageToggle"
.end annotation


# instance fields
.field private mIsChecked:Z

.field private mListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 324
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 325
    invoke-super {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 356
    iget-boolean v0, p0, Landroidx/slice/widget/SliceActionView$ImageToggle;->mIsChecked:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 330
    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView$ImageToggle;->toggle()V

    .line 331
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 361
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 362
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Landroidx/slice/widget/SliceActionView$ImageToggle;->mIsChecked:Z

    if-eqz v1, :cond_0

    .line 363
    sget-object v1, Landroidx/slice/widget/SliceActionView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroidx/slice/widget/SliceActionView$ImageToggle;->mergeDrawableStates([I[I)[I

    .line 365
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 340
    iget-boolean v0, p0, Landroidx/slice/widget/SliceActionView$ImageToggle;->mIsChecked:Z

    if-eq v0, p1, :cond_0

    .line 341
    iput-boolean p1, p0, Landroidx/slice/widget/SliceActionView$ImageToggle;->mIsChecked:Z

    .line 342
    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView$ImageToggle;->refreshDrawableState()V

    .line 343
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView$ImageToggle;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 344
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 347
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 351
    iput-object p1, p0, Landroidx/slice/widget/SliceActionView$ImageToggle;->mListener:Landroid/view/View$OnClickListener;

    .line 352
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 335
    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView$ImageToggle;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceActionView$ImageToggle;->setChecked(Z)V

    .line 336
    return-void
.end method
