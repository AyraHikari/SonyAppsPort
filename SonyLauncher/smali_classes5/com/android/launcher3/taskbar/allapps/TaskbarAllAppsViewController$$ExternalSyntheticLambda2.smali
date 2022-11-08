.class public final synthetic Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    return-void
.end method


# virtual methods
.method public final onSlideInViewClosed()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->maybeCloseWindow()V

    return-void
.end method
