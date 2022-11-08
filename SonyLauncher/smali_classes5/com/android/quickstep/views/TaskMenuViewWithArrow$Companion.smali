.class public final Lcom/android/quickstep/views/TaskMenuViewWithArrow$Companion;
.super Ljava/lang/Object;
.source "TaskMenuViewWithArrow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/TaskMenuViewWithArrow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u00060\u0008R\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/android/quickstep/views/TaskMenuViewWithArrow$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "showForTask",
        "",
        "taskContainer",
        "Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;",
        "Lcom/android/quickstep/views/TaskView;",
        "alignSecondRow",
        "packages__apps__Launcher3__android_common__Launcher3QuickStepLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow$Companion;-><init>()V

    return-void
.end method

.method public static synthetic showForTask$default(Lcom/android/quickstep/views/TaskMenuViewWithArrow$Companion;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;ZILjava/lang/Object;)Z
    .locals 0

    .line 48
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 50
    const/4 p2, 0x0

    .line 48
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/TaskMenuViewWithArrow$Companion;->showForTask(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final showForTask(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Z)Z
    .locals 5
    .param p1, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    .param p2, "alignSecondRow"    # Z

    const-string v0, "taskContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    .line 52
    nop

    .line 54
    .local v0, "activity":Lcom/android/launcher3/BaseDraggingActivity;
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 56
    sget v2, Lcom/android/quickstep/KtR$layout;->task_menu_with_arrow:I

    .line 57
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 58
    nop

    .line 55
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    check-cast v1, Lcom/android/quickstep/views/TaskMenuViewWithArrow;

    .line 61
    .local v1, "taskMenuViewWithArrow":Lcom/android/quickstep/views/TaskMenuViewWithArrow;
    invoke-static {v1, p1, p2}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->access$populateAndShowForTask(Lcom/android/quickstep/views/TaskMenuViewWithArrow;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Z)Z

    move-result v2

    return v2

    .line 54
    .end local v1    # "taskMenuViewWithArrow":Lcom/android/quickstep/views/TaskMenuViewWithArrow;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type com.android.quickstep.views.TaskMenuViewWithArrow<*>"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
