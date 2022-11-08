.class Lcom/android/launcher3/widget/WidgetCell$1;
.super Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
.source "WidgetCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/WidgetCell;->createAppWidgetHostView(Landroid/content/Context;)Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 448
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected shouldAllowDirectClick()Z
    .locals 1

    .line 451
    const/4 v0, 0x0

    return v0
.end method
