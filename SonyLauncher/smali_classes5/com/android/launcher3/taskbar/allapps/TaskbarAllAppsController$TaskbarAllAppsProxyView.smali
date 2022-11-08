.class Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "TaskbarAllAppsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskbarAllAppsProxyView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;


# direct methods
.method static bridge synthetic -$$Nest$mshow(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->show()V

    return-void
.end method

.method private constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 230
    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    .line 231
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 232
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Landroid/content/Context;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$handleClose$0(ZLcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;)V
    .locals 0
    .param p0, "animate"    # Z
    .param p1, "v"    # Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    .line 244
    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->close(Z)V

    return-void
.end method

.method private show()V
    .locals 1

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->mIsOpen:Z

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->-$$Nest$fgetmTaskbarContext(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->addView(Landroid/view/View;)V

    .line 237
    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->-$$Nest$fgetmTaskbarContext(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->removeView(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->-$$Nest$fgetmAllAppsContext(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView$$ExternalSyntheticLambda0;-><init>()V

    .line 243
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView$$ExternalSyntheticLambda1;-><init>(Z)V

    .line 244
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 245
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 249
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 254
    const/4 v0, 0x0

    return v0
.end method
