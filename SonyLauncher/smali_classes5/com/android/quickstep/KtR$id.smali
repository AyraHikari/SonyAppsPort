.class public final Lcom/android/quickstep/KtR$id;
.super Ljava/lang/Object;
.source "KtR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/KtR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static menu_option_layout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget v0, Lcom/android/launcher3/R$id;->menu_option_layout:I

    sput v0, Lcom/android/quickstep/KtR$id;->menu_option_layout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
