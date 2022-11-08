.class Landroidx/slice/widget/LocationBasedViewTracker$1;
.super Ljava/lang/Object;
.source "LocationBasedViewTracker.java"

# interfaces
.implements Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/LocationBasedViewTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 44
    return-void
.end method
