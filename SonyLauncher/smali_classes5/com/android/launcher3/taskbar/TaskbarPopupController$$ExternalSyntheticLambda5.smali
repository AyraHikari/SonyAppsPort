.class public final synthetic Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/taskbar/TaskbarPopupController;

.field public final synthetic f$1:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarPopupController;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Predicate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->lambda$updateNotificationDots$1$com-android-launcher3-taskbar-TaskbarPopupController(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
