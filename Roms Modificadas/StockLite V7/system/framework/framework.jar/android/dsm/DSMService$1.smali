.class final Landroid/dsm/DSMService$1;
.super Ljava/lang/Object;
.source "DSMService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dsm/DSMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 11
    .parameter "location"

    .prologue
    .line 701
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 702
    .local v5, latitute:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 703
    .local v7, longitude:D
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    .line 704
    .local v1, Altitute:D
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v3

    .line 705
    .local v3, Bearing:F
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    .line 706
    .local v4, Speed:F
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    .line 710
    .local v0, Accuracy:F
    sput-object p1, Landroid/dsm/DSMService;->Gloc:Landroid/location/Location;

    .line 711
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 714
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 717
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 720
    return-void
.end method
