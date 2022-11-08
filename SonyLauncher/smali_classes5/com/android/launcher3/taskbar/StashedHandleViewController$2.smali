.class Lcom/android/launcher3/taskbar/StashedHandleViewController$2;
.super Landroid/view/ViewOutlineProvider;
.source "StashedHandleViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/StashedHandleViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

.field final synthetic val$stashedTaskbarHeight:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/StashedHandleViewController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/StashedHandleViewController;

    .line 114
    iput-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    iput p2, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->val$stashedTaskbarHeight:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 118
    .local v0, "stashedCenterX":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->val$stashedTaskbarHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 119
    .local v1, "stashedCenterY":I
    iget-object v2, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->-$$Nest$fgetmStashedHandleBounds(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-static {v3}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->-$$Nest$fgetmStashedHandleWidth(Lcom/android/launcher3/taskbar/StashedHandleViewController;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-static {v4}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->-$$Nest$fgetmStashedHandleHeight(Lcom/android/launcher3/taskbar/StashedHandleViewController;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    iget-object v5, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-static {v5}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->-$$Nest$fgetmStashedHandleWidth(Lcom/android/launcher3/taskbar/StashedHandleViewController;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-static {v6}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->-$$Nest$fgetmStashedHandleHeight(Lcom/android/launcher3/taskbar/StashedHandleViewController;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 124
    iget-object v2, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->-$$Nest$fgetmStashedHandleView(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Lcom/android/launcher3/taskbar/StashedHandleView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-static {v3}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->-$$Nest$fgetmStashedHandleBounds(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/taskbar/StashedHandleView;->updateSampledRegion(Landroid/graphics/Rect;)V

    .line 125
    iget-object v2, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->-$$Nest$fputmStashedHandleRadius(Lcom/android/launcher3/taskbar/StashedHandleViewController;F)V

    .line 126
    iget-object v2, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->-$$Nest$fgetmStashedHandleBounds(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-static {v3}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->-$$Nest$fgetmStashedHandleRadius(Lcom/android/launcher3/taskbar/StashedHandleViewController;)F

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 127
    return-void
.end method
