.class Landroidx/slice/widget/RowView$TimeSetListener;
.super Ljava/lang/Object;
.source "RowView.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/RowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeSetListener"
.end annotation


# instance fields
.field private final mActionItem:Landroidx/slice/SliceItem;

.field private final mRowIndex:I

.field final synthetic this$0:Landroidx/slice/widget/RowView;


# direct methods
.method constructor <init>(Landroidx/slice/widget/RowView;Landroidx/slice/SliceItem;I)V
    .locals 0
    .param p2, "timePickerItem"    # Landroidx/slice/SliceItem;
    .param p3, "mRowIndex"    # I

    .line 1290
    iput-object p1, p0, Landroidx/slice/widget/RowView$TimeSetListener;->this$0:Landroidx/slice/widget/RowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1291
    iput-object p2, p0, Landroidx/slice/widget/RowView$TimeSetListener;->mActionItem:Landroidx/slice/SliceItem;

    .line 1292
    iput p3, p0, Landroidx/slice/widget/RowView$TimeSetListener;->mRowIndex:I

    .line 1293
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 8
    .param p1, "timePicker"    # Landroid/widget/TimePicker;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .line 1297
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1298
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1299
    .local v1, "time":Ljava/util/Date;
    invoke-virtual {v1, p2}, Ljava/util/Date;->setHours(I)V

    .line 1300
    invoke-virtual {v1, p3}, Ljava/util/Date;->setMinutes(I)V

    .line 1302
    iget-object v2, p0, Landroidx/slice/widget/RowView$TimeSetListener;->mActionItem:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_1

    .line 1304
    :try_start_0
    iget-object v3, p0, Landroidx/slice/widget/RowView$TimeSetListener;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {v3}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x10000000

    .line 1305
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.app.slice.extra.RANGE_VALUE"

    .line 1306
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    .line 1304
    invoke-virtual {v2, v3, v4}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1307
    iget-object v2, p0, Landroidx/slice/widget/RowView$TimeSetListener;->this$0:Landroidx/slice/widget/RowView;

    iget-object v2, v2, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v2, :cond_0

    .line 1308
    new-instance v2, Landroidx/slice/widget/EventInfo;

    iget-object v3, p0, Landroidx/slice/widget/RowView$TimeSetListener;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {v3}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v3

    const/4 v4, 0x7

    const/16 v5, 0x8

    iget v6, p0, Landroidx/slice/widget/RowView$TimeSetListener;->mRowIndex:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 1311
    .local v2, "info":Landroidx/slice/widget/EventInfo;
    iget-object v3, p0, Landroidx/slice/widget/RowView$TimeSetListener;->this$0:Landroidx/slice/widget/RowView;

    iget-object v3, v3, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v4, p0, Landroidx/slice/widget/RowView$TimeSetListener;->mActionItem:Landroidx/slice/SliceItem;

    invoke-interface {v3, v2, v4}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    .end local v2    # "info":Landroidx/slice/widget/EventInfo;
    :cond_0
    goto :goto_0

    .line 1313
    :catch_0
    move-exception v2

    .line 1314
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v3, "RowView"

    const-string v4, "PendingIntent for slice cannot be sent"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1317
    .end local v2    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    :goto_0
    return-void
.end method
