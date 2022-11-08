.class Landroidx/slice/widget/GridRowView$TimeSetListener;
.super Ljava/lang/Object;
.source "GridRowView.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/GridRowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeSetListener"
.end annotation


# instance fields
.field private final mActionItem:Landroidx/slice/SliceItem;

.field private final mRowIndex:I

.field final synthetic this$0:Landroidx/slice/widget/GridRowView;


# direct methods
.method constructor <init>(Landroidx/slice/widget/GridRowView;Landroidx/slice/SliceItem;I)V
    .locals 0
    .param p2, "timePickerItem"    # Landroidx/slice/SliceItem;
    .param p3, "mRowIndex"    # I

    .line 712
    iput-object p1, p0, Landroidx/slice/widget/GridRowView$TimeSetListener;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput-object p2, p0, Landroidx/slice/widget/GridRowView$TimeSetListener;->mActionItem:Landroidx/slice/SliceItem;

    .line 714
    iput p3, p0, Landroidx/slice/widget/GridRowView$TimeSetListener;->mRowIndex:I

    .line 715
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 8
    .param p1, "timePicker"    # Landroid/widget/TimePicker;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .line 719
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 720
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 721
    .local v1, "time":Ljava/util/Date;
    invoke-virtual {v1, p2}, Ljava/util/Date;->setHours(I)V

    .line 722
    invoke-virtual {v1, p3}, Ljava/util/Date;->setMinutes(I)V

    .line 724
    iget-object v2, p0, Landroidx/slice/widget/GridRowView$TimeSetListener;->mActionItem:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_1

    .line 726
    :try_start_0
    iget-object v3, p0, Landroidx/slice/widget/GridRowView$TimeSetListener;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-virtual {v3}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x10000000

    .line 727
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.app.slice.extra.RANGE_VALUE"

    .line 728
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    .line 726
    invoke-virtual {v2, v3, v4}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 729
    iget-object v2, p0, Landroidx/slice/widget/GridRowView$TimeSetListener;->this$0:Landroidx/slice/widget/GridRowView;

    iget-object v2, v2, Landroidx/slice/widget/GridRowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v2, :cond_0

    .line 730
    new-instance v2, Landroidx/slice/widget/EventInfo;

    iget-object v3, p0, Landroidx/slice/widget/GridRowView$TimeSetListener;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-virtual {v3}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v3

    const/4 v4, 0x7

    const/16 v5, 0x8

    iget v6, p0, Landroidx/slice/widget/GridRowView$TimeSetListener;->mRowIndex:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 733
    .local v2, "info":Landroidx/slice/widget/EventInfo;
    iget-object v3, p0, Landroidx/slice/widget/GridRowView$TimeSetListener;->this$0:Landroidx/slice/widget/GridRowView;

    iget-object v3, v3, Landroidx/slice/widget/GridRowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v4, p0, Landroidx/slice/widget/GridRowView$TimeSetListener;->mActionItem:Landroidx/slice/SliceItem;

    invoke-interface {v3, v2, v4}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    .end local v2    # "info":Landroidx/slice/widget/EventInfo;
    :cond_0
    goto :goto_0

    .line 735
    :catch_0
    move-exception v2

    .line 736
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v3, "GridRowView"

    const-string v4, "PendingIntent for slice cannot be sent"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 739
    .end local v2    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    :goto_0
    return-void
.end method
