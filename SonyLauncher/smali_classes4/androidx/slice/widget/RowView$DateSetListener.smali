.class Landroidx/slice/widget/RowView$DateSetListener;
.super Ljava/lang/Object;
.source "RowView.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/RowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateSetListener"
.end annotation


# instance fields
.field private final mActionItem:Landroidx/slice/SliceItem;

.field private final mRowIndex:I

.field final synthetic this$0:Landroidx/slice/widget/RowView;


# direct methods
.method constructor <init>(Landroidx/slice/widget/RowView;Landroidx/slice/SliceItem;I)V
    .locals 0
    .param p2, "datePickerItem"    # Landroidx/slice/SliceItem;
    .param p3, "mRowIndex"    # I

    .line 1258
    iput-object p1, p0, Landroidx/slice/widget/RowView$DateSetListener;->this$0:Landroidx/slice/widget/RowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    iput-object p2, p0, Landroidx/slice/widget/RowView$DateSetListener;->mActionItem:Landroidx/slice/SliceItem;

    .line 1260
    iput p3, p0, Landroidx/slice/widget/RowView$DateSetListener;->mRowIndex:I

    .line 1261
    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 8
    .param p1, "datePicker"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .line 1265
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1266
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 1267
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1268
    .local v1, "date":Ljava/util/Date;
    iget-object v2, p0, Landroidx/slice/widget/RowView$DateSetListener;->mActionItem:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_1

    .line 1270
    :try_start_0
    iget-object v3, p0, Landroidx/slice/widget/RowView$DateSetListener;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {v3}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x10000000

    .line 1271
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.app.slice.extra.RANGE_VALUE"

    .line 1272
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    .line 1270
    invoke-virtual {v2, v3, v4}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1273
    iget-object v2, p0, Landroidx/slice/widget/RowView$DateSetListener;->this$0:Landroidx/slice/widget/RowView;

    iget-object v2, v2, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v2, :cond_0

    .line 1274
    new-instance v2, Landroidx/slice/widget/EventInfo;

    iget-object v3, p0, Landroidx/slice/widget/RowView$DateSetListener;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {v3}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x7

    iget v6, p0, Landroidx/slice/widget/RowView$DateSetListener;->mRowIndex:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 1277
    .local v2, "info":Landroidx/slice/widget/EventInfo;
    iget-object v3, p0, Landroidx/slice/widget/RowView$DateSetListener;->this$0:Landroidx/slice/widget/RowView;

    iget-object v3, v3, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v4, p0, Landroidx/slice/widget/RowView$DateSetListener;->mActionItem:Landroidx/slice/SliceItem;

    invoke-interface {v3, v2, v4}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    .end local v2    # "info":Landroidx/slice/widget/EventInfo;
    :cond_0
    goto :goto_0

    .line 1279
    :catch_0
    move-exception v2

    .line 1280
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v3, "RowView"

    const-string v4, "PendingIntent for slice cannot be sent"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1283
    .end local v2    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    :goto_0
    return-void
.end method
