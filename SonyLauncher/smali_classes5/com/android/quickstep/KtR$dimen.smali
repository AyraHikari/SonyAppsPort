.class public final Lcom/android/quickstep/KtR$dimen;
.super Ljava/lang/Object;
.source "KtR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/KtR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static task_menu_horizontal_padding:I

.field public static task_menu_spacing:I

.field public static taskbar_ime_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget v0, Lcom/android/launcher3/R$dimen;->task_menu_spacing:I

    sput v0, Lcom/android/quickstep/KtR$dimen;->task_menu_spacing:I

    .line 33
    sget v0, Lcom/android/launcher3/R$dimen;->task_menu_horizontal_padding:I

    sput v0, Lcom/android/quickstep/KtR$dimen;->task_menu_horizontal_padding:I

    .line 34
    sget v0, Lcom/android/launcher3/R$dimen;->taskbar_ime_size:I

    sput v0, Lcom/android/quickstep/KtR$dimen;->taskbar_ime_size:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
