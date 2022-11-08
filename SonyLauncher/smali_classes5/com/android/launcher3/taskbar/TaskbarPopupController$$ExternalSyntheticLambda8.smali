.class public final synthetic Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/popup/SystemShortcut$Factory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1

    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;

    check-cast p1, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    check-cast v0, Lcom/android/launcher3/popup/SystemShortcut;

    return-object v0
.end method
