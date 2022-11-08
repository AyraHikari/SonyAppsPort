.class Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;
.super Landroid/view/ViewOutlineProvider;
.source "BaseLauncherAppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;

    .line 41
    iput-object p1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->-$$Nest$fgetmEnforcedRectangle(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->-$$Nest$fgetmEnforcedCornerRadius(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->-$$Nest$fgetmEnforcedRectangle(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;

    invoke-static {v1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->-$$Nest$fgetmEnforcedCornerRadius(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Outline;->setEmpty()V

    .line 49
    :goto_1
    return-void
.end method
