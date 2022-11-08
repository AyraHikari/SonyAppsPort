.class public interface abstract Lcom/android/launcher3/statemanager/BaseState;
.super Ljava/lang/Object;
.source "BaseState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/launcher3/statemanager/BaseState;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FLAG_DISABLE_RESTORE:I = 0x2

.field public static final FLAG_NON_INTERACTIVE:I = 0x1


# direct methods
.method public static getFlag(I)I
    .locals 2
    .param p0, "index"    # I

    .line 34
    add-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method


# virtual methods
.method public displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 1
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 64
    .local p0, "this":Lcom/android/launcher3/statemanager/BaseState;, "Lcom/android/launcher3/statemanager/BaseState<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getHistoryForState(Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/statemanager/BaseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getTransitionDuration(Landroid/content/Context;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DEVICE_PROFI",
            "LE_CONTEXT:Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;",
            ">(TDEVICE_PROFI",
            "LE_CONTEXT;",
            "Z)I"
        }
    .end annotation
.end method

.method public abstract hasFlag(I)Z
.end method

.method public shouldDisableRestore()Z
    .locals 1

    .line 52
    .local p0, "this":Lcom/android/launcher3/statemanager/BaseState;, "Lcom/android/launcher3/statemanager/BaseState<TT;>;"
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/launcher3/statemanager/BaseState;->hasFlag(I)Z

    move-result v0

    return v0
.end method
