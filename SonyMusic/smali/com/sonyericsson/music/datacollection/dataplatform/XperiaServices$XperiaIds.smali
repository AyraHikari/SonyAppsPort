.class public Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;
.super Ljava/lang/Object;
.source "XperiaServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XperiaIds"
.end annotation


# instance fields
.field public final xperiaGuid:Ljava/lang/String;

.field public final xperiaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 73
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;->xperiaId:Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, ""

    .line 74
    :goto_1
    iput-object p2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;->xperiaGuid:Ljava/lang/String;

    return-void
.end method
