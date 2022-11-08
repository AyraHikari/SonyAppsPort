.class public Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;
.super Ljava/lang/Object;
.source "TaskbarAutohideSuspendController.java"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController$AutohideSuspendFlag;
    }
.end annotation


# static fields
.field public static final FLAG_AUTOHIDE_SUSPEND_DRAGGING:I = 0x2

.field public static final FLAG_AUTOHIDE_SUSPEND_FULLSCREEN:I = 0x1


# instance fields
.field private mAutohideSuspendFlags:I

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->mAutohideSuspendFlags:I

    .line 51
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    .line 52
    return-void
.end method

.method private static getStateString(I)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # I

    .line 79
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    .local v0, "str":Ljava/util/StringJoiner;
    const/4 v1, 0x1

    const-string v2, "FLAG_AUTOHIDE_SUSPEND_FULLSCREEN"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 82
    const/4 v1, 0x2

    const-string v2, "FLAG_AUTOHIDE_SUSPEND_DRAGGING"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarAutohideSuspendController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->mAutohideSuspendFlags:I

    .line 75
    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 74
    const-string v1, "%s\tmAutohideSuspendFlags=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->notifyTaskbarAutohideSuspend(Z)V

    .line 56
    return-void
.end method

.method public updateFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "enabled"    # Z

    .line 62
    if-eqz p2, :cond_0

    .line 63
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->mAutohideSuspendFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->mAutohideSuspendFlags:I

    goto :goto_0

    .line 65
    :cond_0
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->mAutohideSuspendFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->mAutohideSuspendFlags:I

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->mAutohideSuspendFlags:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->notifyTaskbarAutohideSuspend(Z)V

    .line 68
    return-void
.end method
