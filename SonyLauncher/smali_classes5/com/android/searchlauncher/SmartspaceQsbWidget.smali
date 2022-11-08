.class public Lcom/android/searchlauncher/SmartspaceQsbWidget;
.super Lcom/android/launcher3/qsb/QsbContainerView;
.source "SmartspaceQsbWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/searchlauncher/SmartspaceQsbWidget$SmartSpaceHostView;,
        Lcom/android/searchlauncher/SmartspaceQsbWidget$SmartSpaceFragment;
    }
.end annotation


# static fields
.field private static final WIDGET_CLASS_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox.SearchWidgetProvider"

.field private static final WIDGET_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/searchlauncher/SmartspaceQsbWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/searchlauncher/SmartspaceQsbWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/qsb/QsbContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public static getDateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p0, "parent"    # Landroid/view/ViewGroup;

    .line 93
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->smart_space_date_view:I

    .line 94
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 93
    return-object v0
.end method
