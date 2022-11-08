.class Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$2;
.super Landroid/view/ViewOutlineProvider;
.source "SwipeUpGestureTutorialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    .line 118
    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$2;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 121
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$2;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-static {v0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->-$$Nest$fgetmFakeTaskViewRect(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$2;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-static {v1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->-$$Nest$fgetmFakeTaskViewRadius(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 122
    return-void
.end method
