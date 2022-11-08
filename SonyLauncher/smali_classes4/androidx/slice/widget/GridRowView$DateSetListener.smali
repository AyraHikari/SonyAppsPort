.class Landroidx/slice/widget/GridRowView$DateSetListener;
.super Ljava/lang/Object;
.source "GridRowView.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/GridRowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateSetListener"
.end annotation


# instance fields
.field private final mActionItem:Landroidx/slice/SliceItem;

.field private final mRowIndex:I

.field final synthetic this$0:Landroidx/slice/widget/GridRowView;


# direct methods
.method constructor <init>(Landroidx/slice/widget/GridRowView;Landroidx/slice/SliceItem;I)V
    .locals 0
    .param p2, "datePickerItem"    # Landroidx/slice/SliceItem;
    .param p3, "mRowIndex"    # I

    .line 678
    iput-object p1, p0, Landroidx/slice/widget/GridRowView$DateSetListener;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object p2, p0, Landroidx/slice/widget/GridRowView$DateSetListener;->mActionItem:Landroidx/slice/SliceItem;

    .line 680
    iput p3, p0, Landroidx/slice/widget/GridRowView$DateSetListener;->mRowIndex:I

    .line 681
    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 8
    .param p1, "datePicker"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .line 685
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 686
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 687
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 690
    .local v1, "date":Ljava/util/Date;
    iget-object v2, p0, Landroidx/slice/widget/GridRowView$DateSetListener;->mActionItem:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_1

    .line 692
    :try_start_0
    iget-object v3, p0, Landroidx/slice/widget/GridRowView$DateSetListener;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-virtual {v3}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x10000000

    .line 693
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.app.slice.extra.RANGE_VALUE"

    .line 694
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    .line 692
    invoke-virtual {v2, v3, v4}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 695
    iget-object v2, p0, Landroidx/slice/widget/GridRowView$DateSetListener;->this$0:Landroidx/slice/widget/GridRowView;

    iget-object v2, v2, Landroidx/slice/widget/GridRowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v2, :cond_0

    .line 696
    new-instance v2, Landroidx/slice/widget/EventInfo;

    iget-object v3, p0, Landroidx/slice/widget/GridRowView$DateSetListener;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-virtual {v3}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x7

    iget v6, p0, Landroidx/slice/widget/GridRowView$DateSetListener;->mRowIndex:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 699
    .local v2, "info":Landroidx/slice/widget/EventInfo;
    iget-object v3, p0, Landroidx/slice/widget/GridRowView$DateSetListener;->this$0:Landroidx/slice/widget/GridRowView;

    iget-object v3, v3, Landroidx/slice/widget/GridRowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v4, p0, Landroidx/slice/widget/GridRowView$DateSetListener;->mActionItem:Landroidx/slice/SliceItem;

    invoke-interface {v3, v2, v4}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    .end local v2    # "info":Landroidx/slice/widget/EventInfo;
    :cond_0
    goto :goto_0

    .line 701
    :catch_0
    move-exception v2

    .line 702
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v3, "GridRowView"

    const-string v4, "PendingIntent for slice cannot be sent"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 705
    .end local v2    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    :goto_0
    return-void
.end method
