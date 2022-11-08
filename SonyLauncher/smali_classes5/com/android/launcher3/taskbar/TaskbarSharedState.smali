.class public Lcom/android/launcher3/taskbar/TaskbarSharedState;
.super Ljava/lang/Object;
.source "TaskbarSharedState.java"


# instance fields
.field public allAppsVisible:Z

.field public setupUIVisible:Z

.field public sysuiStateFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->setupUIVisible:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->allAppsVisible:Z

    return-void
.end method
