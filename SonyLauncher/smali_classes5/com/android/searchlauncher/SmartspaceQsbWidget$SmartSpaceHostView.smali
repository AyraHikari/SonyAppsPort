.class Lcom/android/searchlauncher/SmartspaceQsbWidget$SmartSpaceHostView;
.super Lcom/android/launcher3/qsb/QsbWidgetHostView;
.source "SmartspaceQsbWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/searchlauncher/SmartspaceQsbWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartSpaceHostView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/launcher3/qsb/QsbWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected getErrorView()Landroid/view/View;
    .locals 1

    .line 88
    invoke-static {p0}, Lcom/android/searchlauncher/SmartspaceQsbWidget;->getDateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
