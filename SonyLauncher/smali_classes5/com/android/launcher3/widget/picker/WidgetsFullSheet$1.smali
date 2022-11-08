.class Lcom/android/launcher3/widget/picker/WidgetsFullSheet$1;
.super Ljava/lang/Object;
.source "WidgetsFullSheet.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    .line 111
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$1;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

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

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$1;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->access$000(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$1;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 117
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$1;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->-$$Nest$fgetmShowEducationTipTask(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$1;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->-$$Nest$fgetmShowEducationTipTask(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    return-void
.end method
