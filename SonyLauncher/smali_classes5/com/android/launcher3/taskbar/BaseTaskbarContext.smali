.class public abstract Lcom/android/launcher3/taskbar/BaseTaskbarContext;
.super Landroid/view/ContextThemeWrapper;
.source "BaseTaskbarContext.java"

# interfaces
.implements Lcom/android/launcher3/views/AppLauncher;
.implements Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;


# instance fields
.field private final mDPChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "windowContext"    # Landroid/content/Context;

    .line 39
    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mDPChangeListeners:Ljava/util/List;

    .line 40
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method


# virtual methods
.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public final getOnDeviceProfileChangeListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mDPChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method public abstract onDragEnd()V
.end method

.method public abstract onDragStart()V
.end method

.method public abstract onPopupVisibilityChanged(Z)V
.end method
