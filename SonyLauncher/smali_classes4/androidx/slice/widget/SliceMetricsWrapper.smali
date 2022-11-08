.class Landroidx/slice/widget/SliceMetricsWrapper;
.super Landroidx/slice/widget/SliceMetrics;
.source "SliceMetricsWrapper.java"


# instance fields
.field private final mSliceMetrics:Landroid/app/slice/SliceMetrics;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 35
    invoke-direct {p0}, Landroidx/slice/widget/SliceMetrics;-><init>()V

    .line 36
    new-instance v0, Landroid/app/slice/SliceMetrics;

    invoke-direct {v0, p1, p2}, Landroid/app/slice/SliceMetrics;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceMetricsWrapper;->mSliceMetrics:Landroid/app/slice/SliceMetrics;

    .line 37
    return-void
.end method


# virtual methods
.method protected logHidden()V
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/slice/widget/SliceMetricsWrapper;->mSliceMetrics:Landroid/app/slice/SliceMetrics;

    invoke-virtual {v0}, Landroid/app/slice/SliceMetrics;->logHidden()V

    .line 47
    return-void
.end method

.method protected logTouch(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "actionType"    # I
    .param p2, "subSlice"    # Landroid/net/Uri;

    .line 51
    iget-object v0, p0, Landroidx/slice/widget/SliceMetricsWrapper;->mSliceMetrics:Landroid/app/slice/SliceMetrics;

    invoke-virtual {v0, p1, p2}, Landroid/app/slice/SliceMetrics;->logTouch(ILandroid/net/Uri;)V

    .line 52
    return-void
.end method

.method protected logVisible()V
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/slice/widget/SliceMetricsWrapper;->mSliceMetrics:Landroid/app/slice/SliceMetrics;

    invoke-virtual {v0}, Landroid/app/slice/SliceMetrics;->logVisible()V

    .line 42
    return-void
.end method
