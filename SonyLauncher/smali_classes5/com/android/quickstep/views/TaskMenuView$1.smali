.class Lcom/android/quickstep/views/TaskMenuView$1;
.super Landroid/view/ViewOutlineProvider;
.source "TaskMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/TaskMenuView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/TaskMenuView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/TaskMenuView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/views/TaskMenuView;

    .line 126
    iput-object p1, p0, Lcom/android/quickstep/views/TaskMenuView$1;->this$0:Lcom/android/quickstep/views/TaskMenuView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/quickstep/util/TaskCornerRadius;->get(Landroid/content/Context;)F

    move-result v5

    .line 129
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 131
    return-void
.end method
