.class Lcom/android/quickstep/views/FloatingWidgetBackgroundView$1;
.super Landroid/view/ViewOutlineProvider;
.source "FloatingWidgetBackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/FloatingWidgetBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/FloatingWidgetBackgroundView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    .line 59
    iput-object p1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$1;->this$0:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$1;->this$0:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-static {v0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->-$$Nest$fgetmOutlineRadius(Lcom/android/quickstep/views/FloatingWidgetBackgroundView;)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 63
    return-void
.end method
