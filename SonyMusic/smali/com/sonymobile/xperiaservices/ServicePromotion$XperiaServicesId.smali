.class public final Lcom/sonymobile/xperiaservices/ServicePromotion$XperiaServicesId;
.super Ljava/lang/Object;
.source "ServicePromotion.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sonymobile.xperiaservices.provider/xperia_services_id"

    .line 915
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/xperiaservices/ServicePromotion$XperiaServicesId;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
