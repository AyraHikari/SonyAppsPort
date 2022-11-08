.class public Lcom/android/searchlauncher/HotseatQsbWidget$HotseatQsbFragment;
.super Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;
.source "HotseatQsbWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/searchlauncher/HotseatQsbWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotseatQsbFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public isQsbEnabled()Z
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/android/searchlauncher/HotseatQsbWidget$HotseatQsbFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/searchlauncher/HotseatQsbWidget$HotseatQsbFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getQsbEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
