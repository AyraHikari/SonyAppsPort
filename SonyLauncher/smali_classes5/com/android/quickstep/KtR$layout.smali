.class public final Lcom/android/quickstep/KtR$layout;
.super Ljava/lang/Object;
.source "KtR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/KtR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static task_menu_with_arrow:I

.field public static task_view_menu_option:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget v0, Lcom/android/launcher3/R$layout;->task_menu_with_arrow:I

    sput v0, Lcom/android/quickstep/KtR$layout;->task_menu_with_arrow:I

    .line 39
    sget v0, Lcom/android/launcher3/R$layout;->task_view_menu_option:I

    sput v0, Lcom/android/quickstep/KtR$layout;->task_view_menu_option:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
