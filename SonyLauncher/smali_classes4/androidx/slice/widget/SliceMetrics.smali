.class Landroidx/slice/widget/SliceMetrics;
.super Ljava/lang/Object;
.source "SliceMetrics.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/net/Uri;)Landroidx/slice/widget/SliceMetrics;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 37
    new-instance v0, Landroidx/slice/widget/SliceMetricsWrapper;

    invoke-direct {v0, p0, p1}, Landroidx/slice/widget/SliceMetricsWrapper;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected logHidden()V
    .locals 0

    .line 45
    return-void
.end method

.method protected logTouch(ILandroid/net/Uri;)V
    .locals 0
    .param p1, "actionType"    # I
    .param p2, "subSlice"    # Landroid/net/Uri;

    .line 47
    return-void
.end method

.method protected logVisible()V
    .locals 0

    .line 43
    return-void
.end method
