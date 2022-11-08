.class Lcom/android/launcher3/LauncherState$3;
.super Lcom/android/launcher3/LauncherState;
.source "LauncherState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "statsLogOrdinal"    # I
    .param p3, "flags"    # I

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherState;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getTransitionDuration(Landroid/content/Context;Z)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isToState"    # Z

    .line 118
    const/4 v0, 0x0

    return v0
.end method
