.class Lcom/android/launcher3/widget/WidgetsBottomSheet$2;
.super Ljava/lang/Object;
.source "WidgetsBottomSheet.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/WidgetsBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/WidgetsBottomSheet;

    .line 76
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->hasSeenEducationTip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 82
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->-$$Nest$fgetmShowEducationTipTask(Lcom/android/launcher3/widget/WidgetsBottomSheet;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->-$$Nest$fgetmShowEducationTipTask(Lcom/android/launcher3/widget/WidgetsBottomSheet;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    return-void
.end method
