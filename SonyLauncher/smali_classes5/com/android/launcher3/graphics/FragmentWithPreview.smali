.class public Lcom/android/launcher3/graphics/FragmentWithPreview;
.super Landroid/app/Fragment;
.source "FragmentWithPreview.java"


# instance fields
.field private mPreviewContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method enterPreviewMode(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lcom/android/launcher3/graphics/FragmentWithPreview;->mPreviewContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/launcher3/graphics/FragmentWithPreview;->mPreviewContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isInPreviewMode()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/graphics/FragmentWithPreview;->mPreviewContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/launcher3/graphics/FragmentWithPreview;->onInit(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method public onInit(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    return-void
.end method
