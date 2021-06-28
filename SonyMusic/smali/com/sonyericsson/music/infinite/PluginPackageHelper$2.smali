.class final Lcom/sonyericsson/music/infinite/PluginPackageHelper$2;
.super Ljava/lang/Object;
.source "PluginPackageHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/infinite/PluginPackageHelper;->sortList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sonyericsson/music/infinite/PluginInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/music/infinite/PluginInfo;Lcom/sonyericsson/music/infinite/PluginInfo;)I
    .locals 0

    .line 179
    invoke-virtual {p1}, Lcom/sonyericsson/music/infinite/PluginInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sonyericsson/music/infinite/PluginInfo;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 175
    check-cast p1, Lcom/sonyericsson/music/infinite/PluginInfo;

    check-cast p2, Lcom/sonyericsson/music/infinite/PluginInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/infinite/PluginPackageHelper$2;->compare(Lcom/sonyericsson/music/infinite/PluginInfo;Lcom/sonyericsson/music/infinite/PluginInfo;)I

    move-result p1

    return p1
.end method
