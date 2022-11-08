.class Lcom/android/launcher3/notification/NotificationMainView$1;
.super Landroid/view/ViewOutlineProvider;
.source "NotificationMainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/notification/NotificationMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/notification/NotificationMainView;

.field final synthetic val$outlineRadius:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/NotificationMainView;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/notification/NotificationMainView;

    .line 114
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView$1;->this$0:Lcom/android/launcher3/notification/NotificationMainView;

    iput p2, p0, Lcom/android/launcher3/notification/NotificationMainView$1;->val$outlineRadius:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView$1;->this$0:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationMainView;->-$$Nest$fgetmOutline(Lcom/android/launcher3/notification/NotificationMainView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/notification/NotificationMainView$1;->val$outlineRadius:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 118
    return-void
.end method
