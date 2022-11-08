.class Lcom/android/launcher3/views/ClipIconView$4;
.super Landroid/view/ViewOutlineProvider;
.source "ClipIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/ClipIconView;->setIcon(Landroid/graphics/drawable/Drawable;ILandroid/view/ViewGroup$MarginLayoutParams;ZLcom/android/launcher3/DeviceProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/ClipIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/ClipIconView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/views/ClipIconView;

    .line 329
    iput-object p1, p0, Lcom/android/launcher3/views/ClipIconView$4;->this$0:Lcom/android/launcher3/views/ClipIconView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 332
    iget-object v0, p0, Lcom/android/launcher3/views/ClipIconView$4;->this$0:Lcom/android/launcher3/views/ClipIconView;

    invoke-static {v0}, Lcom/android/launcher3/views/ClipIconView;->-$$Nest$fgetmOutline(Lcom/android/launcher3/views/ClipIconView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView$4;->this$0:Lcom/android/launcher3/views/ClipIconView;

    invoke-static {v1}, Lcom/android/launcher3/views/ClipIconView;->-$$Nest$fgetmTaskCornerRadius(Lcom/android/launcher3/views/ClipIconView;)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 333
    return-void
.end method
