.class Landroidx/slice/widget/RowView$2;
.super Ljava/lang/Object;
.source "RowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/RowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/RowView;


# direct methods
.method constructor <init>(Landroidx/slice/widget/RowView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/slice/widget/RowView;

    .line 1427
    iput-object p1, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1430
    iget-object v0, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {v0}, Landroidx/slice/widget/RowView;->sendSliderValue()V

    .line 1431
    iget-object v0, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    .line 1432
    return-void
.end method
